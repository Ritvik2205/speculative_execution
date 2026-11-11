.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock adc byte ptr [r14 + rbx], bl
and rbx, 0b1111111111111 # instrumentation
cmovns eax, dword ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], 124
or cl, 1 # instrumentation
mov ax, 1 # instrumentation
div cl
and rbx, 0b1111111111111 # instrumentation
movzx eax, word ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
add edi, dword ptr [r14 + rbx]
setle cl
or bx, si
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111111 # instrumentation
cmovs bx, word ptr [r14 + rdx]
setp dl
or ax, 0b1000000000000000 # instrumentation
bsf bx, ax
lea di, qword ptr [rcx + rbx + 9]
cmp esi, -52
and rbx, 0b1111111111111 # instrumentation
movsx si, byte ptr [r14 + rbx]
and rbx, 0b1111111111000 # instrumentation
lock inc dword ptr [r14 + rbx]
add al, 87 # instrumentation
cmovo rdi, rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
