.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
inc rcx
and sil, bl
xor dil, -124
xor di, 93
and ax, -12519
and rdx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rdx], eax
bts rbx, 25
jmp .bb_0.1
.bb_0.1:
and rax, 0b1111111111111 # instrumentation
or rcx, qword ptr [r14 + rax]
and al, bl
jmp .bb_0.2
.bb_0.2:
and rax, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rax], dil
and rcx, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rcx], 6
test eax, 424329527
xor dl, -59
and rax, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rax], si
or ax, -4210
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
