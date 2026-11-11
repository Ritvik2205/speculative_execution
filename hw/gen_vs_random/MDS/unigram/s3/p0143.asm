.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rdx
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], eax
and cl, 51 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovb rcx, qword ptr [r14 + rdx]
not al
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and bl, 120 # instrumentation
cmovnp dx, di
cmovb rdi, rdi
jmp .bb_0.1
.bb_0.1:
not esi
and rax, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btr dword ptr [r14 + rax], eax
cmovp esi, esi
xor dl, -59
xor dx, dx
and rcx, 0b1111111111111 # instrumentation
cmovnl dx, word ptr [r14 + rcx]
btr rax, 29
not rdi
xor cl, 83
bts rdx, 200
and rax, 0b1111111111111 # instrumentation
test word ptr [r14 + rax], -3918
xor rdx, -59
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
