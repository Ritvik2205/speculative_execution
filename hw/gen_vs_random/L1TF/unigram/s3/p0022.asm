.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
add dx, word ptr [r14 + rbx]
mov bl, bl
and rbx, 0b1111111111111 # instrumentation
sub al, byte ptr [r14 + rbx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], 17
and rdi, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rdi], 83
and rdx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rdx], rax
and rdx, 0b1111111111111 # instrumentation
cmovbe eax, dword ptr [r14 + rdx]
and rax, 0b1111111111111 # instrumentation
cmovs esi, dword ptr [r14 + rax]
adc edi, 122
and rdx, 0b1111111111111 # instrumentation
cmovnb di, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
and byte ptr [r14 + rbx], bl
btr cx, bx
and rdx, 0b1111111111111 # instrumentation
or word ptr [r14 + rdx], 0b1000000000000000 # instrumentation
bsf si, word ptr [r14 + rdx]
or ax, 10
and rbx, 0b1111111111111 # instrumentation
setns byte ptr [r14 + rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
