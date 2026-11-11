.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rcx, 0b1111111111111 # instrumentation
and rcx, 0b111 # instrumentation
bts qword ptr [r14 + rcx], rcx
btr rsi, 207
and rdx, 0b1111111111111 # instrumentation
xor dword ptr [r14 + rdx], -80
and bl, -62 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rsi]
bts rax, 77
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], cl
and rbx, 0b1111111111111 # instrumentation
cmovs edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and word ptr [r14 + rbx], 101
and rax, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rax]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rbx], 7
and rdx, 0b1111111111111 # instrumentation
and word ptr [r14 + rdx], 107
and rdx, 0b1111111111111 # instrumentation
test byte ptr [r14 + rdx], al
and bl, 27 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovnz rcx, qword ptr [r14 + rcx]
and bl, -67 # instrumentation
cmovnle rdx, rbx
and rdi, 0b1111111111111 # instrumentation
or dil, byte ptr [r14 + rdi]
cmovo di, dx
and rdx, 0b1111111111000 # instrumentation
lock and word ptr [r14 + rdx], dx
or cx, dx
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
