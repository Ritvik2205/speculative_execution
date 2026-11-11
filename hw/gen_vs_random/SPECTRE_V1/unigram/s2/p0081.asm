.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
lea di, qword ptr [rdi + rax + 15575]
and rbx, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rbx], 27
add al, 96 # instrumentation
and rbx, 0b1111111111111 # instrumentation
cmovs rcx, qword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rbx]
and rdx, 0b1111111111111 # instrumentation
cmovnb ecx, dword ptr [r14 + rdx]
or bx, bx
add cl, 69 # instrumentation
and rdi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rdi], al
and rdx, 0b1111111111000 # instrumentation
lock adc word ptr [r14 + rdx], cx
and rsi, 0b1111111111111 # instrumentation
and edi, 0b111 # instrumentation
bt dword ptr [r14 + rsi], edi
cmp ax, bx
and rsi, 0b1111111111111 # instrumentation
add byte ptr [r14 + rsi], al
js .bb_0.1
jmp .exit_0
.bb_0.1:
add bl, -70 # instrumentation
and rbx, 0b1111111111111 # instrumentation
setno byte ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
cmp byte ptr [r14 + rbx], cl
or ecx, 0b1000000000000000000000000000000 # instrumentation
bsf edx, ecx
and rbx, 0b1111111111111 # instrumentation
or dword ptr [r14 + rbx], 0b1000 # instrumentation
and byte ptr [r14 + rbx], 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], 50
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
