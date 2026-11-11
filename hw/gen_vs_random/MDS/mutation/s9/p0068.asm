.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 18 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovb ax, word ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rdi]
btr dx, di
and rdi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rdi], 2
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rdx, 0b1111111111111 # instrumentation
xor rax, qword ptr [r14 + rdx]
xor dil, 81
or dl, 51
cmovnp dx, bx
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rbx]
test cx, 401
and al, dl
bt si, 23
bt di, cx
or al, al
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], dx
and rax, 627810357
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], 72
and rdi, 0b1111111111111 # instrumentation
and qword ptr [r14 + rdi], rdx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
