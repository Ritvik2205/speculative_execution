.intel_syntax noprefix
.section .data.main
.function_0:
.bb_0.0:
.macro.measurement_start: nop qword ptr [rax + 0xff]
and rdx, 0b1111111111000 # instrumentation
lock or byte ptr [r14 + rdx], bl
and rax, 0b1111111111000 # instrumentation
lock and qword ptr [r14 + rax], rcx
or ax, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
and dx, 0b11 # instrumentation
idiv ax
or al, -87
add dl, 43 # instrumentation
lea rbx, qword ptr [rax + rdi]
btc cx, si
xor al, -127
btc ecx, eax
and rsi, 0b1111111111111 # instrumentation
setbe byte ptr [r14 + rsi]
jmp .bb_0.1
.bb_0.1:
xchg eax, ecx
or al, 0b1000 # instrumentation
and al, 0b11111000 # instrumentation
mov ax, 1 # instrumentation
idiv al
inc di
btc si, 49
and rax, 0b1111111111111 # instrumentation
mov dword ptr [r14 + rax], ecx
and rdx, 0b1111111111111 # instrumentation
and ecx, 0b111 # instrumentation
bt dword ptr [r14 + rdx], ecx
lea ebx, qword ptr [rbx]
.exit_0:
.macro.measurement_end: nop qword ptr [rax + 0xff]
jmp .test_case_exit
.section .data.main
.test_case_exit:nop
