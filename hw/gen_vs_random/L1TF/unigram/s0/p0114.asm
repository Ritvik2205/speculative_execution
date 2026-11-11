.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setnb bl
and rsi, 0b1111111111111 # instrumentation
cmovs rax, qword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
movsx dx, byte ptr [r14 + rcx]
cmovno eax, eax
lea rax, qword ptr [rdx + rdi]
and rax, 0b1111111111000 # instrumentation
lock adc qword ptr [r14 + rax], rsi
and rdi, 0b1111111111000 # instrumentation
lock add dword ptr [r14 + rdi], edi
lea rax, qword ptr [rcx + rsi + 86]
jmp .bb_0.1
.bb_0.1:
and rcx, 0b1111111111111 # instrumentation
cmovbe ebx, dword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rsi], 6
and rsi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rsi], 96
add al, 83 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle ebx, dword ptr [r14 + rsi]
sub cl, al
and rax, 0b1111111111111 # instrumentation
cmp bl, byte ptr [r14 + rax]
and rsi, 0b1111111111111 # instrumentation
and eax, 0b111 # instrumentation
btc dword ptr [r14 + rsi], eax
lea rdx, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
