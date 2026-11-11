.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111111 # instrumentation
sub eax, dword ptr [r14 + rdi]
movsx dx, al
mov rcx, rdx
and rcx, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rcx]
and al, 33
sub di, 47
cmovo rax, rsi
not ecx
jnl .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], 46
and rdx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rdx]
btc eax, 84
and rdx, 0b1111111111111 # instrumentation
cmovle rbx, qword ptr [r14 + rdx]
test rsi, -1408527332
cmp al, sil
and rcx, 0b1111111111111 # instrumentation
inc word ptr [r14 + rcx]
lea rdx, qword ptr [rcx + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
