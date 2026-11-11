.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rcx], 2
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
btr rax, 209
and rdi, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdi], 51
and rcx, 0b1111111111111 # instrumentation
and word ptr [r14 + rcx], 105
cmovnz di, dx
and rcx, 0b1111111111111 # instrumentation
test word ptr [r14 + rcx], 2908
and rbx, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btr word ptr [r14 + rbx], cx
bts si, 158
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
and dl, -125 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rsi]
bts eax, 222
and rdi, 0b1111111111111 # instrumentation
cmovnle si, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rdi]
and rax, 0b1111111111111 # instrumentation
cmovl ebx, dword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
btc dword ptr [r14 + rcx], 5
cmovz rcx, rcx
and rax, 0b1111111111111 # instrumentation
and rdx, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and word ptr [r14 + rax], -27
test bl, -9
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
