.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
cmovb edx, ecx
or rbx, 0b1000000000000000000000000000000 # instrumentation
bsr rdx, rbx
add dil, 62 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovp dx, word ptr [r14 + rdi]
and dl, -86
and rbx, 0b1111111111111 # instrumentation
mov ax, word ptr [r14 + rbx]
add al, -122 # instrumentation
cmovnbe eax, eax
and rdx, 0b1111111111111 # instrumentation
cmovb ecx, dword ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
or byte ptr [r14 + rdi], dil
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv byte ptr [r14 + rcx]
setb bl
add dl, -36 # instrumentation
and rbx, 0b1111111111000 # instrumentation
xchg dword ptr [r14 + rbx], edx
adc edi, 117
cbw
and rsi, 0b1111111111111 # instrumentation
cmovo bx, word ptr [r14 + rsi]
and rdi, 0b1111111111111 # instrumentation
inc dword ptr [r14 + rdi]
and rdi, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rdi]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
