.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btc esi, 2
bts rdx, 212
and rbx, 0b1111111111111 # instrumentation
movsx ecx, word ptr [r14 + rbx]
lea rdi, qword ptr [rsi + rcx + 2]
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], dil
add dl, 117 # instrumentation
sbb rcx, rdi
sbb sil, -78
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rax
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], cl
and rsi, 0b1111111111111 # instrumentation
sub di, word ptr [r14 + rsi]
and rcx, 0b1111111111000 # instrumentation
lock neg byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
imul si, word ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovnb ebx, dword ptr [r14 + rax]
add al, -13
add dl, -125 # instrumentation
and rsi, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rsi], 43
and rcx, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rcx], sil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
