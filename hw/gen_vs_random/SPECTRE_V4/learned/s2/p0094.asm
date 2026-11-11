.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], sil
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], al
and dx, -107
cmp dl, cl
or bl, cl
xor al, 23
cmp sil, dl
and cl, al
cmp cl, -80
and rax, 0b1111111111000 # instrumentation
lock sbb byte ptr [r14 + rax], cl
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], al
or bl, bl
or si, 85
or cx, 23
and rsi, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rsi]
cmp sil, 127
test ax, -6584
sub dil, al
sbb rax, 59
add al, -4
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
add al, -32
xor dl, bl
xchg rsi, rbx
add dil, bl
and cl, sil
and rcx, 0b1111111111111 # instrumentation
cmovb di, word ptr [r14 + rcx]
add sil, -18
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
