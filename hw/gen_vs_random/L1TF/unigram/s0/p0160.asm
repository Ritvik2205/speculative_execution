.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rcx], 4
neg al
test bx, bx
and dl, -86
dec ecx
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], dx
and rsi, 0b1111111111000 # instrumentation
lock sbb qword ptr [r14 + rsi], rdi
or dl, bl
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], dx
jmp .bb_0.1
.bb_0.1:
or edx, eax
and rax, 0b1111111111111 # instrumentation
mov byte ptr [r14 + rax], dl
test rbx, rdi
imul al
and rdi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdi], al
xchg rsi, rdx
or al, -57
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
