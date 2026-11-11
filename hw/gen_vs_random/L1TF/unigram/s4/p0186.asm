.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub eax, 132782095
cmp dil, 18
sbb bl, -94
cwd
and rcx, 0b1111111111111 # instrumentation
sbb si, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
add ax, 98
add cl, -110 # instrumentation
setbe bl
and rbx, 0b1111111111111 # instrumentation
cmovp eax, dword ptr [r14 + rbx]
sbb bl, sil
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
btr ebx, 98
cmovnbe dx, ax
and rdx, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdx], rax
setnp al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
