.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
bts ebx, 205
not rdi
and rdx, 0b1111111111111 # instrumentation
and esi, 0b111 # instrumentation
bt dword ptr [r14 + rdx], esi
and rcx, 0b1111111111111 # instrumentation
xor rdx, qword ptr [r14 + rcx]
and rax, 0b1111111111111 # instrumentation
cmovs ebx, dword ptr [r14 + rax]
and rbx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rbx], -32
test al, 22
cmovno rax, rdx
and rax, 0b1111111111111 # instrumentation
cmovnb dx, word ptr [r14 + rax]
bts bx, dx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -180081263
and rbx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rbx], 112
or rbx, -77
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and rsi, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rsi], -60
test eax, 1838539683
and rax, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rax]
and rdi, 0b1111111111111 # instrumentation
bts dword ptr [r14 + rdi], 4
and rsi, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rsi]
cmovb bx, bx
jmp .bb_0.1
.bb_0.1:
and dl, 0 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovo ebx, dword ptr [r14 + rbx]
or dl, sil
and rax, 0b1111111111111 # instrumentation
cmovp esi, dword ptr [r14 + rax]
xor al, bl
and rax, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rax], ecx
btr si, 52
and rcx, 0b1111111111111 # instrumentation
xor di, word ptr [r14 + rcx]
and al, -103
and rdi, 0b1111111111111 # instrumentation
or dx, word ptr [r14 + rdi]
or bl, al
and rbx, 0b1111111111111 # instrumentation
not qword ptr [r14 + rbx]
and rax, 0b1111111111111 # instrumentation
and rdi, qword ptr [r14 + rax]
cmovnbe rbx, rdx
and rsi, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rsi], cl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
