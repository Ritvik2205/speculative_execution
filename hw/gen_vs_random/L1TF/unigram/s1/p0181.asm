.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
sub edi, 57
and rcx, 0b1111111111111 # instrumentation
or word ptr [r14 + rcx], 0b1000 # instrumentation
and byte ptr [r14 + rcx], 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv word ptr [r14 + rcx]
and rdx, 0b1111111111111 # instrumentation
or cx, word ptr [r14 + rdx]
and rcx, 0b1111111111111 # instrumentation
or byte ptr [r14 + rcx], al
and rdx, 0b1111111111111 # instrumentation
mov dil, byte ptr [r14 + rdx]
and rdi, 0b1111111111111 # instrumentation
and si, word ptr [r14 + rdi]
and rsi, 0b1111111111111 # instrumentation
seto byte ptr [r14 + rsi]
or cl, bl
and rbx, 0b1111111111000 # instrumentation
lock add word ptr [r14 + rbx], di
or si, 1 # instrumentation
and dx, si # instrumentation
shr dx, 1 # instrumentation
div si
add cl, -73 # instrumentation
and rsi, 0b1111111111111 # instrumentation
cmovl rdi, qword ptr [r14 + rsi]
and rax, 0b1111111111000 # instrumentation
lock dec dword ptr [r14 + rax]
test cl, 33
and rcx, 0b1111111111111 # instrumentation
cmovnb edi, dword ptr [r14 + rcx]
and rdx, 0b1111111111000 # instrumentation
xchg qword ptr [r14 + rdx], rax
inc rax
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
