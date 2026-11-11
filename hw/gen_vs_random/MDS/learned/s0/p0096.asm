.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or sil, -8
and rdx, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdx], 0
and rbx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovns rsi, rcx
and rbx, 0b1111111111000 # instrumentation
lock add byte ptr [r14 + rbx], dil
test rax, 1732677821
jmp .bb_0.1
.bb_0.1:
and rsi, 0b1111111111111 # instrumentation
or cl, byte ptr [r14 + rsi]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -23
jmp .bb_0.2
.bb_0.2:
setno sil
and rax, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rax], esi
and rcx, 0b1111111111111 # instrumentation
xor dil, byte ptr [r14 + rcx]
mov sil, bl
and rsi, 0b1111111111111 # instrumentation
test word ptr [r14 + rsi], di
bt edx, 75
or si, 0b1000000000000000 # instrumentation
bsf dx, si
and rdi, 0b1111111111111 # instrumentation
adc byte ptr [r14 + rdi], 71
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
