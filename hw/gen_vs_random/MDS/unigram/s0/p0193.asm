.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
xor cl, 98
and al, -54
or dl, -8
and al, 20 # instrumentation
cmovp bx, dx
or bl, bl
and rax, 0b1111111111111 # instrumentation
bts word ptr [r14 + rax], 27
and dl, 119 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnbe si, word ptr [r14 + rax]
and rcx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rcx], ebx
or ax, 30524
and rdx, 0b1111111111000 # instrumentation
lock xor dword ptr [r14 + rdx], 81
and rdi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rdi], ecx
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ebx
and rcx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rcx]
xor rax, rax
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 2
test cx, 401
bt rsi, 4
btr rsi, 146
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], cl
btr bx, 100
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
