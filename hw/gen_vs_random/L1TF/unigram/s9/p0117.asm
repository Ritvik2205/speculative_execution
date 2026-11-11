.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdi], -784964246
neg rsi
setz bl
and rdx, 0b1111111111111 # instrumentation
or dl, byte ptr [r14 + rdx]
cmovs ax, di
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], al
and rcx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rcx]
xor sil, dl
xchg rdi, rbx
setns al
and rsi, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rsi], rcx
setz sil
sub ax, 26007
and rcx, 0b1111111111111 # instrumentation
cmovle edx, dword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rax]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
