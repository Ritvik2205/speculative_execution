.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dl, -26
setle dl
cmovno ecx, ecx
sub bl, dl
and rax, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rax], cx
lea dx, qword ptr [rdi + rax + 51]
add dl, dil
and rcx, 0b1111111111000 # instrumentation
lock inc byte ptr [r14 + rcx]
lea ecx, qword ptr [rdx + rdx]
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
and dx, 0b111 # instrumentation
btc word ptr [r14 + rdx], dx
sbb dil, dl
setnl cl
setb dl
test dx, 17
and rdi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdi], sil
and rbx, 0b1111111111111 # instrumentation
sbb eax, dword ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
