.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
cmovnl edi, dword ptr [r14 + rdi]
add dl, 58 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovs cx, word ptr [r14 + rcx]
add dl, -85 # instrumentation
add dl, -62 # instrumentation
and rcx, 0b1111111111111 # instrumentation
movsx rax, word ptr [r14 + rcx]
xor sil, sil
and rbx, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rbx], edi
jnle .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsf edx, eax
and rbx, 0b1111111111111 # instrumentation
adc ecx, dword ptr [r14 + rbx]
mov sil, sil
or sil, 52
sub dx, -23
and rcx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rcx], 61
or bx, 1 # instrumentation
and dx, bx # instrumentation
shr dx, 1 # instrumentation
div bx
and rsi, 0b1111111111000 # instrumentation
and rax, 0b111 # instrumentation
lock btc qword ptr [r14 + rsi], rax
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
bt word ptr [r14 + rdx], 5
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
