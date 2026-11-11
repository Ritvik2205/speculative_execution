.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], 44
test cx, 401
and rcx, 0b1111111111111 # instrumentation
or ebx, dword ptr [r14 + rcx]
bts rax, 77
and rcx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rcx], -834948525
and rax, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
cmovnbe edx, dword ptr [r14 + rax]
xor cl, cl
and rcx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rcx], ax
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], edi
or dl, 85
and bl, 98 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovno rsi, qword ptr [r14 + rbx]
cmovo rax, rax
and rcx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
btr word ptr [r14 + rcx], si
and al, -35 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz ax, word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rdx], cl
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], -47
and al, -24 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovo ax, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
and dword ptr [r14 + rcx], edi
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
