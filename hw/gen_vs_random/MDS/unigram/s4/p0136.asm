.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovnz cx, di
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
not byte ptr [r14 + rax]
and rsi, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rsi], 44
and rdx, 0b1111111111111 # instrumentation
cmovs ecx, dword ptr [r14 + rdx]
test al, dl
cmovb di, bx
and bl, 109 # instrumentation
cmovs dx, ax
and rsi, 0b1111111111111 # instrumentation
xor word ptr [r14 + rsi], 57
and rdx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rdx], -117
and rcx, 0b1111111111111 # instrumentation
xor word ptr [r14 + rcx], -108
test al, bl
or sil, -49
and rax, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rax], -7
btr ebx, eax
btc eax, edi
btr si, 52
and rax, 0b1111111111000 # instrumentation
and rbx, 0b111 # instrumentation
lock bts qword ptr [r14 + rax], rbx
and rbx, 0b1111111111000 # instrumentation
and cx, 0b111 # instrumentation
lock btc word ptr [r14 + rbx], cx
xor bl, dil
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
