.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor bl, bl
and rdi, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rdi]
and dl, bl
cmovno si, ax
and rcx, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor al, byte ptr [r14 + rcx]
xchg rsi, rdi
and rbx, 0b1111111111111 # instrumentation
cmovnl di, word ptr [r14 + rbx]
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
or bl, bl
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
add al, 19
and rax, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rax], -51
cmp si, 109
sbb dil, cl
sub cl, al
xor al, -82
sbb al, 66
and cl, dl
xor di, 65
and rdi, 0b1111111111111 # instrumentation
xor bl, byte ptr [r14 + rdi]
sbb dl, 53
or cl, cl
or ax, -26182
and rsi, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rsi]
cmp al, dil
cmp al, 98
adc sil, al
and rsi, 0b1111111111111 # instrumentation
or bx, word ptr [r14 + rsi]
or eax, 0b1000000000000000000000000000000 # instrumentation
bsr ecx, eax
sbb dil, cl
or ax, 48
and cl, bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
