.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
or sil, cl
cmovp ax, si
btr bx, 188
cmovle bx, si
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edx
and rax, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rax]
and edx, -44
and rax, 0b1111111111111 # instrumentation
cmovnz rdi, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], si
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], 9
and rdi, 0b1111111111111 # instrumentation
and bx, 0b111 # instrumentation
btr word ptr [r14 + rdi], bx
test al, dl
and al, sil
and rsi, 0b1111111111111 # instrumentation
or edi, dword ptr [r14 + rsi]
xor dx, 56
and bx, 18
and rdx, 0b1111111111111 # instrumentation
xor rbx, qword ptr [r14 + rdx]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
