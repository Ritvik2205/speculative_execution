.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdi, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rdi], sil
and al, -36 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovno rdx, qword ptr [r14 + rax]
and rax, 0b1111111111000 # instrumentation
and eax, 0b111 # instrumentation
lock btr dword ptr [r14 + rax], eax
and al, -10 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovnle edi, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmovnbe esi, dword ptr [r14 + rbx]
and rdx, 0b1111111111000 # instrumentation
lock or word ptr [r14 + rdx], 103
and dl, -81 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovo dx, word ptr [r14 + rdi]
and rdi, 0b1111111111000 # instrumentation
lock not dword ptr [r14 + rdi]
and bl, -5 # instrumentation
cmovnl cx, dx
test al, 66
bt di, cx
cmovb rcx, rcx
and rax, 0b1111111111111 # instrumentation
or qword ptr [r14 + rax], -119
and rdi, 0b1111111111111 # instrumentation
cmovnbe rdi, qword ptr [r14 + rdi]
cmovb rsi, rax
cmovo rdx, rdx
and rcx, 0b1111111111000 # instrumentation
lock xor byte ptr [r14 + rcx], -106
and rcx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rcx], eax
and rsi, 0b1111111111000 # instrumentation
and ax, 0b111 # instrumentation
lock btr word ptr [r14 + rsi], ax
and rdx, 0b1111111111000 # instrumentation
lock xor word ptr [r14 + rdx], ax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
