.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
cmovns rdi, qword ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovbe cx, word ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rsi
and rax, 0b1111111111111 # instrumentation
cmovle ecx, dword ptr [r14 + rax]
test edx, -1561252782
cmovnp edi, ebx
and rbx, 0b1111111111111 # instrumentation
or rax, qword ptr [r14 + rbx]
btr dx, cx
and rsi, 0b1111111111111 # instrumentation
and rax, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rax
and rdi, 0b1111111111111 # instrumentation
cmovns rcx, qword ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rsi], 7
bts rsi, rbx
not dl
and al, dil
cmovnl dx, bx
and rdx, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdx]
xor al, -19
bts rdx, 200
and rbx, 0b1111111111111 # instrumentation
cmovnle rax, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rbx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
