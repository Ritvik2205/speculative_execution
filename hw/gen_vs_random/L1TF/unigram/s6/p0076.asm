.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnp esi, eax
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 5
btc edx, eax
or rdi, rdi
and rsi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rsi], 37
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rdi]
cmovs di, dx
and rsi, 0b1111111111111 # instrumentation
adc dl, byte ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rcx], 0b1000000000000000000000000000000 # instrumentation
bsf edi, dword ptr [r14 + rcx]
and rsi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rsi], 46
add sil, -61
and rdi, rsi
and rbx, 0b1111111111111 # instrumentation
movsx rdx, byte ptr [r14 + rbx]
xor rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
