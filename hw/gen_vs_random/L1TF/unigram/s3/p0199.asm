.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
adc edi, dword ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock dec word ptr [r14 + rcx]
lea ecx, qword ptr [rcx]
sbb dl, sil
test cl, al
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], bl
cmovnl si, bx
mov dl, bl
test rax, 1469613902
and rdx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rdx]
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], sil
and rdi, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdi], si
and rbx, 0b1111111111111 # instrumentation
cmp dword ptr [r14 + rbx], -6
and rdi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rdi]
mul dil
or rsi, 0b1000000000000000000000000000000 # instrumentation
bsr rax, rsi
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
