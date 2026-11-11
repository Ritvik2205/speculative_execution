.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111000 # instrumentation
lock or qword ptr [r14 + rbx], 57
and rbx, 0b1111111111111 # instrumentation
mov al, byte ptr [r14 + rbx]
cmovno eax, edi
and rcx, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
add eax, dword ptr [r14 + rdx]
and rsi, 0b1111111111111 # instrumentation
cmp word ptr [r14 + rsi], bx
and rdi, 0b1111111111111 # instrumentation
test dword ptr [r14 + rdi], -751147448
cbw
and rsi, 0b1111111111111 # instrumentation
and bl, byte ptr [r14 + rsi]
imul ecx
and rsi, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
bt qword ptr [r14 + rsi], rsi
and rcx, 0b1111111111111 # instrumentation
dec byte ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], al
and rbx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rbx], al
and rdi, 0b1111111111111 # instrumentation
inc word ptr [r14 + rdi]
cmovl esi, edi
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], bl
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
