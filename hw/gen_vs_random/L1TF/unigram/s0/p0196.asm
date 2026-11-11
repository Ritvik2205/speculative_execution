.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr ebx, esi
and rax, 0b1111111111111 # instrumentation
setnl byte ptr [r14 + rax]
test bx, bx
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 41
and rbx, 0b1111111111111 # instrumentation
mov word ptr [r14 + rbx], 43
imul rbx, rdi, 83
lea cx, qword ptr [rsi + rcx + 41]
and rbx, 0b1111111111000 # instrumentation
lock sbb dword ptr [r14 + rbx], 61
and rdx, 0b1111111111111 # instrumentation
imul byte ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rdx], al
cwde
jmp .bb_0.1
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
btr qword ptr [r14 + rdi], rdx
and rdx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btc dword ptr [r14 + rdx], ecx
and rdx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rdx], al
sub dil, bl
and rdx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
