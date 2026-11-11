.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
setp dl
and rdx, 0b1111111111111 # instrumentation
mov cl, byte ptr [r14 + rdx]
add al, 31
and rcx, 0b1111111111111 # instrumentation
or sil, byte ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
inc word ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 1
add bl, 76 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnb cx, word ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdi], 6
add dl, -121 # instrumentation
cmovnp eax, ecx
lea eax, qword ptr [rax]
and rax, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rax], 15
and rcx, 0b1111111111111 # instrumentation
add ebx, dword ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rbx]
and rdi, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdi], 38
btr ax, di
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 97
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
