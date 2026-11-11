.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock bts word ptr [r14 + rdi], 2
add al, -21 # instrumentation
and rcx, 0b1111111111111 # instrumentation
adc al, byte ptr [r14 + rcx]
add dl, 82 # instrumentation
adc dl, bl
lea esi, qword ptr [rdx]
movzx edi, ax
and rdx, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rdx]
bts dx, 63
and rcx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rcx]
bt rcx, rax
setp al
and rsi, 0b1111111111111 # instrumentation
neg byte ptr [r14 + rsi]
and rsi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rsi], dil
cmp bl, 123
test al, -82
sub dx, 34
add dl, 65 # instrumentation
cmovo rdx, rcx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
