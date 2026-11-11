.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sbb dx, ax
and rdx, 0b1111111111111 # instrumentation
add al, byte ptr [r14 + rdx]
mov ecx, -1856082135
and rdi, 0b1111111111111 # instrumentation
mov dl, byte ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
add dword ptr [r14 + rsi], edi
inc esi
and rcx, 0b1111111111111 # instrumentation
and al, byte ptr [r14 + rcx]
and rdi, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rdi]
jmp .bb_0.1
.bb_0.1:
and rbx, 0b1111111111111 # instrumentation
bt dword ptr [r14 + rbx], 85
and rax, 0b1111111111000 # instrumentation
lock sbb word ptr [r14 + rax], -73
or sil, dl
add al, -6 # instrumentation
cmovnb edx, eax
and rsi, 0b1111111111111 # instrumentation
setb byte ptr [r14 + rsi]
and rdx, 0b1111111111111 # instrumentation
add rcx, qword ptr [r14 + rdx]
and rdx, 0b1111111111000 # instrumentation
lock add qword ptr [r14 + rdx], -30
and rdx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rdx], 7
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
