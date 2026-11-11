.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], 52
and rax, 0b1111111111111 # instrumentation
or word ptr [r14 + rax], 0b1000 # instrumentation
and byte ptr [r14 + rax], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rax]
and rax, 0b1111111111111 # instrumentation
sub dword ptr [r14 + rax], ecx
and rbx, 0b1111111111000 # instrumentation
lock and dword ptr [r14 + rbx], ebx
and rcx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rcx], bx
and rdi, 0b1111111111111 # instrumentation
sbb rdx, qword ptr [r14 + rdi]
cmovo edi, eax
and rcx, 0b1111111111111 # instrumentation
test qword ptr [r14 + rcx], 38
and rax, 0b1111111111111 # instrumentation
test qword ptr [r14 + rax], 22
and rdi, 0b1111111111000 # instrumentation
and di, 0b111 # instrumentation
lock bts word ptr [r14 + rdi], di
lea rax, qword ptr [rsi + rcx]
add ebx, 62
and rsi, 0b1111111111000 # instrumentation
and rsi, 0b111 # instrumentation
lock bts qword ptr [r14 + rsi], rsi
and dl, al
btr ecx, 68
bswap rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
