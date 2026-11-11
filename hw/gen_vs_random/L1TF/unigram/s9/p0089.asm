.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb al, -4
and rcx, 0b1111111111000 # instrumentation
xchg byte ptr [r14 + rcx], sil
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], 41
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], si
sub dil, -70
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rax
add al, -46
and rdx, 0b1111111111111 # instrumentation
imul rdx, qword ptr [r14 + rdx]
add dil, -7
xchg sil, sil
add al, 77 # instrumentation
sbb eax, 50
add sil, 82 # instrumentation
adc sil, dl
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rax]
sub ecx, 44
btr ax, cx
add bl, 104 # instrumentation
sbb rbx, 24
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
