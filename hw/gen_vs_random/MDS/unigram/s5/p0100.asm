.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
btr di, cx
not sil
and rdx, 0b1111111111000 # instrumentation
and dx, 0b111 # instrumentation
lock bts word ptr [r14 + rdx], dx
test ax, -20900
and rax, 0b1111111111111 # instrumentation
and sil, byte ptr [r14 + rax]
and al, 39 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno rcx, qword ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovno di, word ptr [r14 + rcx]
and rcx, 0b1111111111111 # instrumentation
cmovnbe ebx, dword ptr [r14 + rcx]
and edi, 23
or sil, sil
bt cx, ax
bts si, dx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -122
and rbx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rbx], 1
cmovb eax, edx
and rcx, 0b1111111111111 # instrumentation
and rdx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rdx
and rsi, 0b1111111111111 # instrumentation
btc word ptr [r14 + rsi], 3
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 29
and bl, -120 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovnle cx, word ptr [r14 + rdi]
and rbx, 0b1111111111000 # instrumentation
lock not byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
