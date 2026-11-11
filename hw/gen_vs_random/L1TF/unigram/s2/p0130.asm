.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ax, 48
and rdx, 0b1111111111111 # instrumentation
sub word ptr [r14 + rdx], -10
add bl, -61 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp ax, word ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rsi]
add al, 50 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo si, word ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], al
and rax, 0b1111111111111 # instrumentation
cmp qword ptr [r14 + rax], rcx
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], sil
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
neg ebx
and rax, 0b1111111111111 # instrumentation
xor sil, byte ptr [r14 + rax]
lea ebx, qword ptr [rcx + rdx + 9]
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], sil
add al, -58 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
cmovo dx, bx
not cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
