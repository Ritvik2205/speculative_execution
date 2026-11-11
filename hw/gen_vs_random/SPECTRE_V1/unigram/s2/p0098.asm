.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
add cl, -29 # instrumentation
lea rax, qword ptr [rdi + rdi + 32]
and rdx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rdx], rbx
lea edi, qword ptr [rax + rbx]
and rax, 0b1111111111111 # instrumentation
setz byte ptr [r14 + rax]
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
or bx, 0b1000000000000000 # instrumentation
bsr ax, bx
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], ax
loopne .bb_0.1
jmp .exit_0
.bb_0.1:
add al, 98 # instrumentation
and rax, 0b1111111111111 # instrumentation
cmovnle eax, dword ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
setl byte ptr [r14 + rdx]
and rcx, 0b1111111111000 # instrumentation
lock sub word ptr [r14 + rcx], bx
setno al
adc bx, cx
and rdx, 0b1111111111111 # instrumentation
cmovle rax, qword ptr [r14 + rdx]
and rdi, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rdi]
and rbx, 0b1111111111111 # instrumentation
and si, 0b111 # instrumentation
bts word ptr [r14 + rbx], si
and rsi, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rsi], 99
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
