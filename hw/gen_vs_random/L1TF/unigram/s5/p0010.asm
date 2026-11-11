.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000000000000000 # instrumentation
bsf ax, word ptr [r14 + rdi]
add sil, 65 # instrumentation
cmovo rsi, rdi
and al, sil
and rbx, rax
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
bt eax, esi
and rdx, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rdx], 16
xor sil, cl
or al, -57
and rdx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rdx], esi
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], dx
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rsi], 8
add al, 36 # instrumentation
lea eax, qword ptr [rax + rdx + 73]
and rdx, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
cmovnl rsi, qword ptr [r14 + rcx]
mov sil, cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
