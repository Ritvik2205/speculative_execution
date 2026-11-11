.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
neg cx
add cl, -15 # instrumentation
and rcx, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rsi], ecx
and rbx, 0b1111111111000 # instrumentation
lock btr qword ptr [r14 + rbx], 7
setnbe dil
add al, -37 # instrumentation
and rcx, 0b1111111111111 # instrumentation
mov qword ptr [r14 + rcx], rsi
and rdx, 0b1111111111111 # instrumentation
cmovno cx, word ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
mul byte ptr [r14 + rbx]
xor eax, -2123070438
sbb rdx, rbx
movzx di, dil
or dl, 1 # instrumentation
or esi, 1 # instrumentation
and edx, esi # instrumentation
shr edx, 1 # instrumentation
div esi
bts esi, 96
and rbx, 0b1111111111111 # instrumentation
and rsi, 0b111 # instrumentation
btr qword ptr [r14 + rbx], rsi
lea rcx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
