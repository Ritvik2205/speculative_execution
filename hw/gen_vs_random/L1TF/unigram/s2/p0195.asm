.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
mov rdi, qword ptr [r14 + rax]
cmovo rdi, rbx
xor dil, -42
and rax, 0b1111111111111 # instrumentation
or byte ptr [r14 + rax], -71
setnl bl
and rcx, 0b1111111111000 # instrumentation
and ecx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ecx
and al, dil
and rbx, 0b1111111111000 # instrumentation
lock bts dword ptr [r14 + rbx], 95
setnb bl
xor cl, bl
xor rcx, rax
or rcx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv rcx
imul al
test rdi, rbx
add dil, dil
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
