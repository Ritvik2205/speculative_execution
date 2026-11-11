.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rcx], cl
and rdx, 0b1111111111111 # instrumentation
btc word ptr [r14 + rdx], 16
and dl, 84 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovl esi, dword ptr [r14 + rdi]
xor al, -15
or ebx, 0b1000000000000000000000000000000 # instrumentation
bsf esi, ebx
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], esi
and rcx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rcx]
bts di, ax
cmovbe di, di
and rcx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdi], di
and dl, 113 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovo rsi, qword ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000000000000000000000000000000 # instrumentation
bsr esi, dword ptr [r14 + rbx]
and al, 4 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovle cx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rbx], si
and sil, 65
and rax, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rax], edi
and rbx, 0b1111111111111 # instrumentation
cmovnb rcx, qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
not dword ptr [r14 + rax]
cmovp rcx, rbx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
