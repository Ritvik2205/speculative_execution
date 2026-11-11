.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rbx, 0b1111111111111 # instrumentation
xor edx, dword ptr [r14 + rbx]
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], bl
lea rbx, qword ptr [rcx + rax + 55452]
and rax, 0b1111111111111 # instrumentation
adc di, word ptr [r14 + rax]
and rbx, 0b1111111111111 # instrumentation
xor byte ptr [r14 + rbx], 81
adc dl, sil
setnp cl
lea di, qword ptr [rax]
btc si, di
and rbx, 0b1111111111111 # instrumentation
sbb byte ptr [r14 + rbx], dl
jmp .bb_0.1
.bb_0.1:
and rdx, 0b1111111111000 # instrumentation
and rdx, 0b111 # instrumentation
lock bts qword ptr [r14 + rdx], rdx
and rdx, 0b1111111111000 # instrumentation
lock sub byte ptr [r14 + rdx], 80
btc di, 237
jmp .bb_0.2
.bb_0.2:
xor al, 14
and rdi, 0b1111111111111 # instrumentation
mov word ptr [r14 + rdi], cx
lea si, qword ptr [rdi]
xchg rbx, rbx
or cx, 0b1000 # instrumentation
and cl, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv cx
and rcx, 0b1111111111000 # instrumentation
lock not qword ptr [r14 + rcx]
and rsi, 0b1111111111111 # instrumentation
and byte ptr [r14 + rsi], 16
and al, -99
and dl, al
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
