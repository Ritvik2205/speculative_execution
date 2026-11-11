.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
or rax, rbx
and rdi, 0b1111111111111 # instrumentation
or word ptr [r14 + rdi], -74
and rbx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rbx], si
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rdx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdx], dl
xor sil, bl
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
xor ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rcx], dil
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 50
and rdx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and rbx, 0b1111111111111 # instrumentation
cmovnb rax, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe rsi, qword ptr [r14 + rcx]
xor ecx, 8
xor si, 91
and rcx, 0b1111111111111 # instrumentation
cmovb rax, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
