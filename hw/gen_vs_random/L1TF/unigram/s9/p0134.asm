.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
imul cx, ax, 75
and rbx, 0b1111111111111 # instrumentation
bt qword ptr [r14 + rbx], 48
and rbx, 0b1111111111111 # instrumentation
sbb word ptr [r14 + rbx], di
sbb dl, cl
mul edi
and rdx, 0b1111111111111 # instrumentation
or al, byte ptr [r14 + rdx]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], cl
and rbx, 0b1111111111111 # instrumentation
cmovo edi, dword ptr [r14 + rbx]
sbb al, dl
cmovnbe rcx, rax
mov si, di
and rax, 0b1111111111111 # instrumentation
sets byte ptr [r14 + rax]
and rdx, 0b1111111111111 # instrumentation
and rbx, 0b111 # instrumentation
btc qword ptr [r14 + rdx], rbx
and rbx, 0b1111111111000 # instrumentation
lock and byte ptr [r14 + rbx], cl
and rdx, 0b1111111111000 # instrumentation
xchg word ptr [r14 + rdx], si
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
