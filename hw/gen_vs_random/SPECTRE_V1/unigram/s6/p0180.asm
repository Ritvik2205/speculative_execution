.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add ecx, 8
and rax, 0b1111111111111 # instrumentation
and cx, 0b111 # instrumentation
btc word ptr [r14 + rax], cx
mul al
or rsi, -14
and rdi, 0b1111111111111 # instrumentation
bts word ptr [r14 + rdi], 2
jb .bb_0.1
jmp .exit_0
.bb_0.1:
xor rcx, 74
add bl, 39 # instrumentation
cmovo ecx, eax
xchg dl, cl
xchg dil, dl
and rax, 0b1111111111111 # instrumentation
movsx ax, byte ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
and ebx, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
or si, word ptr [r14 + rdx]
lea bx, qword ptr [rdx + rbx]
and rbx, 0b1111111111111 # instrumentation
setnbe byte ptr [r14 + rbx]
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], edx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], 812406526
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
