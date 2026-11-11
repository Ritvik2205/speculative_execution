.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub cl, -47
add cl, bl
and rbx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rbx], 70
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], rcx
and sil, 111
add al, -47
and rcx, 0b1111111111000 # instrumentation
lock dec byte ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
jns .bb_0.1
jmp .exit_0
.bb_0.1:
and rdi, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rdi], sil
and rcx, 0b1111111111000 # instrumentation
lock inc qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdi], dl
lea rdi, qword ptr [rsi + rcx]
xor rdx, rbx
and rsi, 0b1111111111111 # instrumentation
sub byte ptr [r14 + rsi], dil
add cl, -52 # instrumentation
and rax, 0b1111111111111 # instrumentation
sbb rcx, qword ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
imul rbx, qword ptr [r14 + rcx], 48
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
