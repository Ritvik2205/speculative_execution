.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], di
and rsi, 0b1111111111111 # instrumentation
test byte ptr [r14 + rsi], cl
and rsi, 0b1111111111111 # instrumentation
not dword ptr [r14 + rsi]
and rdi, 0b1111111111000 # instrumentation
lock btr dword ptr [r14 + rdi], 23
cmovno si, di
and rbx, 0b1111111111111 # instrumentation
test dword ptr [r14 + rbx], 1987381845
cmovs edx, eax
and sil, sil
and al, -61 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
cmovno dx, word ptr [r14 + rbx]
cmovle rax, rdx
cmovnl eax, edi
or dil, -52
and rdi, 0b1111111111111 # instrumentation
bts qword ptr [r14 + rdi], 4
and rdx, 0b1111111111000 # instrumentation
and esi, 0b111 # instrumentation
lock btr dword ptr [r14 + rdx], esi
or al, dl
and rcx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock btr qword ptr [r14 + rcx], rdx
or rdi, 67
cmovnle rdi, rcx
cmovb edx, eax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
