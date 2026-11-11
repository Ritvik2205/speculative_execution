.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rdi], al
setnb bl
and rsi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rsi]
add sil, 21 # instrumentation
and rsi, 0b1111111111111 # instrumentation
adc dil, byte ptr [r14 + rsi]
sub bl, 15
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
jmp .bb_0.1
.bb_0.1:
imul rcx
cmp di, 45
setp al
btr rbx, 58
add dl, -7 # instrumentation
cwd
and rcx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rcx]
add bl, 89 # instrumentation
sbb bl, dl
add bl, -127 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovz si, word ptr [r14 + rdx]
lea edi, qword ptr [rbx + rax]
add di, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
