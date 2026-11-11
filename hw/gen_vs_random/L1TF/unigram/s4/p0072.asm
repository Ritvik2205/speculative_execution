.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
cmovnb si, word ptr [r14 + rbx]
test sil, sil
cmovl cx, bx
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 1 # instrumentation
and edx, dword ptr [r14 + rax] # instrumentation
shr edx, 1 # instrumentation
div dword ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rsi], cx
and rax, 0b1111111111111 # instrumentation
cmovnle ax, word ptr [r14 + rax]
sub rdi, 90
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], dl
and rax, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rax]
cmp cl, 57
and rsi, 0b1111111111111 # instrumentation
cmovnle esi, dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
add rax, qword ptr [r14 + rcx]
add cl, -97 # instrumentation
and rdx, 0b1111111111111 # instrumentation
movsx rcx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rcx], 50
test dl, dl
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
