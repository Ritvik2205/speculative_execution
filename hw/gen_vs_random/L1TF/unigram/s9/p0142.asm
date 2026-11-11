.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add dl, -53 # instrumentation
dec ax
and rdx, 0b1111111111111 # instrumentation
cmovb ebx, dword ptr [r14 + rdx]
cmovb bx, ax
sub dl, bl
and rdx, 0b1111111111111 # instrumentation
imul dword ptr [r14 + rdx]
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], dil
and rcx, 0b1111111111111 # instrumentation
sub bl, byte ptr [r14 + rcx]
movzx di, dl
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -73
add dl, 37 # instrumentation
cmovbe cx, ax
setnle dl
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], dx
and rax, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rax], si
test rdi, rcx
test rcx, 4
xchg rax, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
