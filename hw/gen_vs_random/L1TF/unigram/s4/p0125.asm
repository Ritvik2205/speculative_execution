.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
mov ax, 31
sub sil, dl
and rsi, 0b1111111111111 # instrumentation
or dword ptr [r14 + rsi], eax
and rsi, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rsi], 67
and rdx, 0b1111111111111 # instrumentation
setnp byte ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
or qword ptr [r14 + rsi], rsi
mov bx, si
add al, -31 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovp rbx, qword ptr [r14 + rdx]
sbb cl, 83
or rdx, 0b1000000000000000000000000000000 # instrumentation
bsr rbx, rdx
and rsi, 0b1111111111111 # instrumentation
imul qword ptr [r14 + rsi]
sbb sil, dl
and rbx, 0b1111111111111 # instrumentation
cmovnb rdx, qword ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 97
lea rsi, qword ptr [rcx + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
