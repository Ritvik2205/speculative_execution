.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rcx], bl
cmovb ecx, ecx
add bl, -94 # instrumentation
and rbx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rbx], 43
and rdi, 0b1111111111111 # instrumentation
test word ptr [r14 + rdi], 8958
and cl, bl
movsx ax, sil
and cl, 88
cmp dil, sil
jno .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
add dl, -51 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovns rbx, qword ptr [r14 + rax]
and rdx, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rsi
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], 46
and rdx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdx], 70
lea bx, qword ptr [rcx + rdx + 98]
and rsi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rsi], sil
add cl, 87 # instrumentation
and rcx, 0b1111111111111 # instrumentation
sbb rbx, qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
