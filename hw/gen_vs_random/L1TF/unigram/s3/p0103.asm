.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rsi
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], -33
btc cx, di
and eax, ebx
and rdi, 0b1111111111111 # instrumentation
cmovbe di, word ptr [r14 + rdi]
sbb cx, si
and rcx, 0b1111111111111 # instrumentation
or qword ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and rdx, 0b11 # instrumentation
idiv qword ptr [r14 + rcx]
and rdi, 0b1111111111000 # instrumentation
lock neg dword ptr [r14 + rdi]
sbb ebx, 94
add sil, -39 # instrumentation
and rsi, 0b1111111111111 # instrumentation
setnb byte ptr [r14 + rsi]
or edi, 0b1000 # instrumentation
and dil, 0b11111000 # instrumentation
and edx, 0b11 # instrumentation
idiv edi
and rdi, 0b1111111111111 # instrumentation
add qword ptr [r14 + rdi], rsi
add sil, -3 # instrumentation
and rdi, 0b1111111111111 # instrumentation
cmovs si, word ptr [r14 + rdi]
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
cmp dl, 64
and rbx, 0b1111111111000 # instrumentation
lock or dword ptr [r14 + rbx], 76
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
