.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rax, 0b1111111111111 # instrumentation
imul dx, word ptr [r14 + rax]
or ax, 0b1000000000000000 # instrumentation
bsf si, ax
and rcx, 0b1111111111111 # instrumentation
xor dl, byte ptr [r14 + rcx]
dec dl
and rcx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rcx], -40
and rcx, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rcx], 46
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
and rsi, 0b1111111111111 # instrumentation
neg dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
mov eax, dword ptr [r14 + rbx]
or rdx, 46
and rdx, 0b1111111111111 # instrumentation
cmovno edi, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmovp edi, dword ptr [r14 + rsi]
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], dil
and rax, 0b1111111111111 # instrumentation
dec qword ptr [r14 + rax]
or rbx, 97
and rcx, 0b1111111111111 # instrumentation
cmovno bx, word ptr [r14 + rcx]
and rbx, 0b1111111111111 # instrumentation
imul rcx, qword ptr [r14 + rbx], 7
and eax, 39
cmovbe ax, bx
and bl, 44 # instrumentation
and rdx, 0b1111111111111 # instrumentation
cmovle ax, word ptr [r14 + rdx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
