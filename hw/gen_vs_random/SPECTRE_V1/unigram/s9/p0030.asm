.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts di, ax
add al, 89 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovb rdi, qword ptr [r14 + rax]
sub dl, al
and rdx, 0b1111111111111 # instrumentation
cmp rdi, qword ptr [r14 + rdx]
seto sil
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 2
jbe .bb_0.1
jmp .exit_0
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs rbx, qword ptr [r14 + rdx]
add dl, -24 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovle bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], 0b1000 # instrumentation
and byte ptr [r14 + rdi], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rdi]
add cl, -59 # instrumentation
and rdx, 0b1111111111111 # instrumentation
sbb qword ptr [r14 + rdx], 65
cmp al, dl
sub dil, dil
and cx, ax
and rbx, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rbx]
or sil, cl
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 14
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
