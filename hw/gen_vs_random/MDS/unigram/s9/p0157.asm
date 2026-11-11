.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
xor bx, word ptr [r14 + rsi]
and dx, 3
and rax, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rsi]
bt bx, ax
btr rsi, 207
and al, al
and rdi, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rbx], rsi
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovz rdx, qword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rdx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rdx], si
and rdx, 0b1111111111111 # instrumentation
cmovnbe rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], di
and rdx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rdx], ecx
and rdi, 0b1111111111111 # instrumentation
cmovl bx, word ptr [r14 + rdi]
and bl, 68
test di, 65
test al, -81
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
