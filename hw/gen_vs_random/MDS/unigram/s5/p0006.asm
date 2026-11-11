.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock btc qword ptr [r14 + rdx], 3
and rbx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rbx]
or cl, 7
and rsi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rsi], di
and rdx, 0b1111111111000 # instrumentation
and rcx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rcx
and rbx, 0b1111111111000 # instrumentation
and ebx, 0b111 # instrumentation
lock btr dword ptr [r14 + rbx], ebx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], eax
test dl, sil
and rdx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rdx]
jmp .bb_0.1
.bb_0.1:
or rsi, 34
and rax, 0b1111111111111 # instrumentation
test byte ptr [r14 + rax], 40
and rsi, 67
or edx, esi
xor al, 9
cmovnb dx, ax
cmovb cx, dx
and rsi, 0b1111111111111 # instrumentation
and word ptr [r14 + rsi], -33
cmovs rsi, rcx
and rcx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rcx], eax
and rbx, 0b1111111111111 # instrumentation
or word ptr [r14 + rbx], -83
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
