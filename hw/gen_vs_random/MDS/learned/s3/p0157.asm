.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and dl, 107 # instrumentation
cmovs ecx, ebx
cmovnb dx, di
and rbx, 0b1111111111111 # instrumentation
or rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmovnz bx, word ptr [r14 + rcx]
or eax, -1827868798
bts rbx, 51
bts rsi, rsi
and rdx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rdx], -69
jmp .bb_0.1
.bb_0.1:
and al, 12 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovnp rbx, qword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
mul word ptr [r14 + rsi]
btc cx, 104
and rax, 0b1111111111111 # instrumentation
or dword ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rax]
and si, di
and rcx, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rcx], edi
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], di
or rdx, rsi
and rdx, 0b1111111111111 # instrumentation
btr word ptr [r14 + rdx], 2
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], -92
or dl, 22
bts rdx, 255
or ax, 6575
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
