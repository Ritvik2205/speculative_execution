.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rsi], 5
and rdi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rdi]
or dx, 125
test di, cx
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], 0b1000000000000000000000000000000 # instrumentation
bsf rcx, qword ptr [r14 + rdx]
and al, 50 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
xor rdx, -59
bt rax, 37
and rbx, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rbx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], dl
or edi, -88
and rcx, 0b1111111111111 # instrumentation
or bl, byte ptr [r14 + rcx]
test edx, -1561252782
cmovle rsi, rdx
or cl, dl
not rax
and rbx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rbx]
cmovns rsi, rcx
test rdi, 89
or al, 37
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
